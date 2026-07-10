const vscode = require('vscode');
const fs = require('fs');
const path = require('path');

const GIT_GRAPH_EXTENSION_ID = 'mhutchie.git-graph';
const GIT_GRAPH_VIEW_COMMAND = 'git-graph.view';

function hasGitFolder(folder) {
	try {
		return fs.existsSync(path.join(folder.uri.fsPath, '.git'));
	} catch {
		return false;
	}
}

async function activate() {
	try {
		const folders = vscode.workspace.workspaceFolders;
		if (!folders || !folders.some(hasGitFolder)) {
			return;
		}

		const gitGraph = vscode.extensions.getExtension(GIT_GRAPH_EXTENSION_ID);
		if (!gitGraph) {
			return;
		}
		if (!gitGraph.isActive) {
			await gitGraph.activate();
		}

		await vscode.commands.executeCommand(GIT_GRAPH_VIEW_COMMAND);
	} catch {
		// Never let autostart break the editor session.
	}
}

module.exports = { activate };
